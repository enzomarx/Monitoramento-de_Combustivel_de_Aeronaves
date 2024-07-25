# Nome do executável
EXECUTABLE = fuel_monitor

# Diretórios
SRC_DIR = src
BIN_DIR = bin
OBJ_DIR = obj
TEST_DIR = tests

# Compilador e flags
GNATMAKE = gnatmake
GNATFLAGS = -g -O2
LINKFLAGS = -lgtkada

# Fontes e objetos
SOURCES = $(wildcard $(SRC_DIR)/*.adb)
OBJECTS = $(patsubst $(SRC_DIR)/%.adb, $(OBJ_DIR)/%.o, $(SOURCES))

# Regras
all: $(BIN_DIR)/$(EXECUTABLE)

$(BIN_DIR)/$(EXECUTABLE): $(OBJECTS)
	@mkdir -p $(BIN_DIR)
	$(GNATMAKE) $(GNATFLAGS) -o $@ $(OBJECTS) $(LINKFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.adb
	@mkdir -p $(OBJ_DIR)
	$(GNATMAKE) $(GNATFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

test: all
	@echo "Executando testes..."
	# Adicione aqui comandos para executar testes, se houver

.PHONY: all clean test
