#!/sbin/sh
#For APNs fix D2VMU phones
#Written by Moped_Ryder
busybox mount -o remount,rw /system
cp /system/build.prop /system/build.prop-bak
sed -i 's/ro.cdma.home.operator.numeric.*$/ro.cdma.home.operator.numeric=310120/' /system/build.prop
sed -i 's/ro.cdma.home.operator.alpha.*$/ro.cdma.home.operator.alpha=Sprint/' /system/build.prop
sed -i 's/ro.product.locale.region=.*$/ro.product.locale.region=US/' /system/build.prop
sed -i 's/gsm.sim.operator.alpha.*$/gsm.sim.operator.alpha=Sprint/' /system/build.prop
sed -i 's/gsm.sim.operator.numeric.*$/gsm.sim.operator.numeric=310120/' /system/build.prop
sed -i 's/gsm.operator.alpha.*$/gsm.operator.alpha=Sprint/' /system/build.prop
sed -i 's/gsm.operator.numeric.*$/gsm.operator.numeric=310120/' /system/build.prop
sed -i 's/gsm.sim.operator.iso-country=.*$/gsm.sim.operator.iso-country =US/' /system/build.prop
sed -i 's/gsm.operator.iso-country=.*$/gsm.operator.iso-country=US/' /system/build.prop
sed -i 's/ro.telephony.default_network=.*$/ro.telephony.default_network=8/' /system/build.prop
echo "#moped_Ryder carrier edit" >> /system/build.prop
