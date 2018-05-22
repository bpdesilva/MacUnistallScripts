echo "Changing Directory to Downloads...."
sudo cd ~/download
echo "Downloading Flutter....."
wget https://storage.googleapis.com/flutter_infra/releases/beta/macos/flutter_macos_v0.3.2-beta.zip
echo "Extracting Flutter........."
unzip flutter_macos_v0.3.2-beta.zip
echo "Settting up enviroment....."
export PATH=`pwd`/flutter/bin:$PATH
echo "Validating for missing dependencies...."
flutter doctor
