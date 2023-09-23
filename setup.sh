echo Setting up lakewood.ai server
mkdir subs
echo Cloning frontend
cd subs
git clone https://github.com/Lakewood-High-School/lakewood.ai
echo Cloned frontend
cd ..
echo Running hosting setup file
cd subs/lakewood.ai
chmod +x setup.sh
./setup.sh
cd ../..
echo Frontend setup completed
echo Server setup completed
