sudo netstat -nlp | grep 80

#Create multiple file with touch
touch {a..z}.txt

touch {{a..z},{A..Z},{0..99}}.txt 

for i in {000..2100}
do
   echo hello $i >> "File{i}.txt"
done

# SUM - SUBS 
expr 52 + 23

# Create docker image