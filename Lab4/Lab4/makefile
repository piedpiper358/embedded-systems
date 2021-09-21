# ---------------------------------------------------------------------------
# Имя проекта

NAME	= lab4

# Настройки компилятора и линкера

CC      = sdcc
CFLAGS  = -I./INCLUDE -c --stack-auto
LFLAGS  = --code-loc 0x2100 --xram-loc 0x6000 --stack-auto --stack-loc 0x80 

# Настройки системы автоинкремента версии сборки

PROJECT  = $(shell type PROJECT)
VERSION  = $(shell type VERSION)
BUILD    = $(shell type BUILD)
TYPE     = $(shell type TYPE)

PROJNAME = ${PROJECT}-${VERSION}-${BUILD}-${TYPE}
TARBALL  = ${PROJNAME}.tar

# Настройки M3P

M3P		 = m3p
COMPORT	 = com1
COMLOG	 = $(COMPORT)_log.txt
BAUD	 = 1200

# Каталоги с исходными текстами

SRC_DIR = SRC


define PROG
: WAIT\
    CR CR\
    ." Включите питание и нажмите кнопку RESET на стенде SDK." CR CR \
    ." Ожидание перезапуска... " \
    BEGIN RSIO DUP EMIT 109 == UNTIL\
    ." Ok" CR CR\
; \
		TERMINATEONERROR\
		9600 OPENCHANNEL $(COMPORT)\
		WAIT \
		T_RAM \
		0x2100       WRITE $(NAME).bin\
		0x2100       JMP\
		CLOSECHANNEL\
		ECHO $(COMLOG) \
		$(BAUD) OPENCHANNEL $(COMPORT)\
		+ECHO \
		3 TERM \
		-ECHO\
		\ECHO\
	BYE
endef



# ---------------------------------------------------------------------------

all: lab4

clean:
	del $(NAME).hex
	del $(NAME).bin
	del $(NAME).map
	del $(NAME).mem
	del $(NAME).lnk
	del pm3p_*.txt
	del com?_log.txt
	del $(TARBALL).gz
	del $(SRC_DIR)\*.asm
	del $(SRC_DIR)\*.rel
	del $(SRC_DIR)\*.rst
	del $(SRC_DIR)\*.sym
	del $(SRC_DIR)\*.lst 


load: 
#	@test.bat $(BAUD) $(COMPORT) $(COMLOG)
	@test.bat $(BAUD)
#	m3p $(BAUD) lfile load.m3p
#	$(M3P) $(PROG)


#	echo $(PROG) > load2.m3p
#	$(M3P) lfile load2.m3p
	
dist:
	tar -cvf $(TARBALL) --exclude=*.tar .
	gzip $(TARBALL)

term:
	$(M3P) echo $(COMLOG) $(BAUD)  openchannel $(COMPORT) +echo 6 term -echo bye



LIST_SRC = \
$(SRC_DIR)/max.c \
$(SRC_DIR)/led.c \
$(SRC_DIR)/lab4.c \
$(SRC_DIR)/sio.c 

LIST_OBJ = $(LIST_SRC:.c=.rel)

#--opt-code-size
lab4 : $(LIST_OBJ) makefile
	$(CC)  $(LIST_OBJ) -o $(NAME).hex $(LFLAGS)
	$(M3P) hb166 $(NAME).hex $(NAME).bin bye


$(LIST_OBJ) : %.rel : %.c makefile
	$(CC) -c $(CFLAGS) $< -o $@  

