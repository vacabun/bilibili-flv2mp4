SHELL_FOLDER=$(cd "$(dirname "$0")"; pwd)
cd $SHELL_FOLDER
for i in *.flv; do
    name=`echo "$i" | cut -d'.' -f1`
    ./ffmpeg -i "$i" -vcodec copy -acodec copy "${name}.mp4";
done