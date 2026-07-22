CXX      := g++
CXXFLAGS := -std=c++17 -Wall -Wextra
SRCS     := $(wildcard *.cpp)
BINS     := $(SRCS:.cpp=)

.PHONY: all clean

all: $(BINS)

%: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

clean:
	rm -f $(BINS)
