set /P NAME="�t�@�C�����Ɏg�p���鎁������͂��Ă��������F"
set /P TODAY="�t�@�C�����Ɏg�p���鍡���̓��t��yyyymmdd�œ��͂��Ă��������F"
set /P USER="�����ΏۊO�̃L���b�V���t�H���_����肷�邽�߁APC���O�C�����̃��[�U������͂��Ă��������F"

cd c:\

dir *.doc? *.xls? *.ppt? *.pdf *.txt *.xsd? *.mdb? *.zip *.lzh *.csv /s /b > tmporary.txt

find /V "C:\Users\"%USER%"\AppData" tmporary.txt > tmporary2.txt
find /V "C:\Users\"%USER%"\OneDrive - Nihon Unisys, Ltd" tmporary2.txt > tmporary.txt
find /V "C:\Windows\ServiceProfiles\LocalService\AppData" tmporary.txt > %NAME%_%TODAY%.txt

del tmporary.txt

del tmporary2.txt

/
