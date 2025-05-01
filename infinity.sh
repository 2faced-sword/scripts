rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/projectinfinity-X/manifest -b 15 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh; \
git clone https://github.com/2faced-sword/build_manifest -b infinity .repo/local_manifests && \
export BUILD_USERNAME=Krishy; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/New Delhi; \
source build/envsetup.sh; \
lunch infinity_apollo-user && \
mka bacon
