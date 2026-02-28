ASM     = ca65
LD      = ld65
SRC     = BalloonFight.asm
OBJ     = BalloonFight.o
CFG     = nrom.cfg

.PHONY: all ntsc ereader pal vc animal_crossing japan pirate clean verify

all: ntsc ereader pal vc animal_crossing japan pirate verify

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

japan:
	$(ASM) $(SRC) -o $(OBJ) -Djapan=1
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_japan.nes

animal_crossing:
	$(ASM) $(SRC) -o $(OBJ) -Djapan=1 -Danimal_crossing=1
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_animal_crossing.nes

pirate:
	$(ASM) $(SRC) -o $(OBJ) -Djapan=1 -Dpirate=1
	$(LD) $(OBJ) --config $(CFG) -o BalloonFight_pirate.nes

verify:
	@sha1sum -c roms.sha1

clean:
	rm -f $(OBJ) BalloonFight_*.nes