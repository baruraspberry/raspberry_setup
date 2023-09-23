# raspberry_setup
Main codes for Raspberry

Terminal aç
cd Desktop
git clone https://github.com/baruraspberry/raspberry_setup.git
cd raspberry_setup/raspberry_main/raspberry_setup
chmod +x ./set_git_repo.bash
chmod +x sensors.py
chmod +x ./git-push.bash
./set_git_repo.bash
bu raspberry için bir isim gir
ssh key oluşturmak konum isteyecek, önerdiği yeri kabul etmek için enter'a basabilirsin. Yeni bir key oluşturmak için eğer override edilsin mi diye sorarsa y yazıp enter'a bas. 
verilen key'i kopyala ve tarayıcıdan githubına gir. Ayarla kısmında SSH and GPG keys kısmına gel. New SSH key seçeneğine tıkla ve kopyaladığın keyi yapıştır. Üst kısımda da bir isim veriliyor. 
Örnek key
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDn5GzmfUCHqGt8us/tTBXWk5sTRtmyc6xGBVPVSeTAPIowIvKVeYxPtDt5i3IgfJ5mZaSUOO5n0EdvDmc1wS51kCXLsgAItBRcBbNEfeDk0VOyBFr1Imjj3Osf7zs9iEthrgOv6pjA1cW0Vmh9VEH5Avl/l/AZjm1dAqOMehChBQIWws0VyTvxDPWIo//zMhJtAV2qo0cfKXH+VZymfxEwnvVy2RuHCnSqeKSHOOAkqVkvyEnmzx6c9stCTCx5oPMu7/bkNrIO31Fp2Ga7/04vNtmii8v9qPwxBI/mQfs55+cvZHDXTsHFZ/eq7PfsAtd8jTG92Qs3s/NkTqZY8uacvfVGm15GEF+qFR76hZUcq2np7vVfs2Ipqwe6n4fRmZEhcltvnQmFUUmkX5S+qKcF8P6dE20HVV2DnNmXuYp1A+ygw616ZYgrJuqPK3HKUvk4osCyz/2amtnYgBQfAVLkU2rHfu12DNOlmD3Ycxx08jz/CyoIvR5eUzl/86rXXYk= pi@raspberrypi
Github'a ssh key'i ekledikten sonra enter'a bas.
Script'i tekrar çalıştırmak gerekirse SSH Key'i tekrar oluşturmadan devam edilebilir.

./git-push.bash
Bu komut çalıştırıldığında bir passphrase isteyecek. SSH Key oluştururken verdiğimiz şifreyi kullanacağız.
Artık github'a veri aktarımı başlamış olmalı.
