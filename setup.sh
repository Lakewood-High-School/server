echo Setting up lakewood.ai server
mkdir subs
echo Cloning frontend
cd subs
git clone https://github.com/Lakewood-High-School/lakewood.ai
cd ..
echo Cloned frontend
echo Running hosting setup file
./subs/lakewood.ai/setup.sh
echo Sever setup completed
