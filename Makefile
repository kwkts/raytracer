CXXFLAGS	=	-std=c++2a -Wall

PNGXX_LDFLAGS	=	$(shell libpng-config --ldflags)

SRCDIR	=	source
INCDIR	=	include

SRCS	=	$(wildcard $(SRCDIR)/*.cc)

raytracer: $(SRCS)
	$(CXX) $(CXXFLAGS) $^ -I$(INCDIR) -o $@ $(PNGXX_LDFLAGS)

clean:
	rm -f raytracer

.PHONY: clean
