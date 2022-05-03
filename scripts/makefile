PROJECT := VulkanEngine.exe
SRC_DIR := ../src
BUILD_DIR := ../build
OBJ_DIR := ../build/obj
EXT_DIR := ../external

SRC_FILES := $(wildcard $(SRC_DIR)/**/*cpp) $(wildcard $(SRC_DIR)/*.cpp)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRC_FILES))

LIBRARIES := -lvulkan-1 -lglfw3dll

INCLUDE :=-I$(EXT_DIR)/glfw/include \
	-IC:/VulkanSDK/1.2.198.1/Include \

LIB :=-L$(EXT_DIR)/glfw/lib-mingw-w64 \
	-LC:/VulkanSDK/1.2.198.1/Lib \

all: $(PROJECT)

$(PROJECT): $(OBJ_FILES)
	g++ -g -o $(BUILD_DIR)/$@ $^ $(LIB) $(LIBRARIES)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	g++ -Wall -Wextra -pedantic -std=c++17 -g -c -o $@ $< $(INCLUDE)

