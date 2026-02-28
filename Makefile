ASM     = ca65
LD      = ld65
SRC     = BalloonFight.asm
OBJ     = BalloonFight.o
CFG     = nrom.cfg

.PHONY: all ntsc ereader pal vc animal_crossing japan clean

all: ntsc ereader pal vc animal_crossing japan

ntsc:
	$(ASM) $(SRC) -o $(OBJ)
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_ntsc.nes

ereader:
	$(ASM) $(SRC) -o $(OBJ) -Dereader=1
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_ereader.nes

pal:
	$(ASM) $(SRC) -o $(OBJ) -Dpal=1
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_pal.nes

vc:
	$(ASM) $(SRC) -o $(OBJ) -Dvc=1
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_vc.nes

animal_crossing:
	$(ASM) $(SRC) -o $(OBJ) -Djapan=1 -Danimal_crossing=1
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_animal_crossing.nes

japan:
	$(ASM) $(SRC) -o $(OBJ) -Djapan=1
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_japan.nes

clean:
	rm -f $(OBJ) BalloonFight_*.nes