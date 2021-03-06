
all: copy push clean

copy: build
	git checkout gh-pages; cp -r output/ ./; 

push: 
	git add -A; 
	git commit -m "[`date`] Generate new HTML"; 
	git push origin;
	git checkout master;

build:
	nodeppt generate slides/mobile-sensor.md -a -o ./output

clean:
	rm -rf output/ css/ fonts/ img/ js/ mobile-sensor.htm

