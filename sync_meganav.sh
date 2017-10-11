# Script for syncing the meganav master branches with master (only PULLs)
# modify the MEGANAV_MASTER_DIRECTORY value to the path of your workspace where you have meganav-master-phase1-XXXX branches checked out
# run the below command to allow this script execution
# chmod +x sync_meganav.sh

MEGANAV_MASTER_DIRECTORY=/Users/kcash/StashWorkspace/MegaNav_Masters
cd $MEGANAV_MASTER_DIRECTORY/hydra-site-builder
git -c diff.mnemonicprefix=false -c core.quotepath=false fetch origin
git -c diff.mnemonicprefix=false -c core.quotepath=false pull origin master
git -c diff.mnemonicprefix=false -c core.quotepath=false submodule update --init --recursive
git -c diff.mnemonicprefix=false -c core.quotepath=false push -v --tags origin refs/heads/feature/meganav-master-phase1-sitebuilder:refs/heads/feature/meganav-master-phase1-sitebuilder
echo ~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~
echo
cd $MEGANAV_MASTER_DIRECTORY/cms
git -c diff.mnemonicprefix=false -c core.quotepath=false fetch origin
git -c diff.mnemonicprefix=false -c core.quotepath=false pull origin master
git -c diff.mnemonicprefix=false -c core.quotepath=false submodule update --init --recursive
git -c diff.mnemonicprefix=false -c core.quotepath=false push -v --tags origin refs/heads/feature/meganav-master-phase1-cms:refs/heads/feature/meganav-master-phase1-cms
echo ~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~
echo
cd $MEGANAV_MASTER_DIRECTORY/hydra-core
git -c diff.mnemonicprefix=false -c core.quotepath=false fetch origin
git -c diff.mnemonicprefix=false -c core.quotepath=false pull origin master
git -c diff.mnemonicprefix=false -c core.quotepath=false submodule update --init --recursive
git -c diff.mnemonicprefix=false -c core.quotepath=false push -v --tags origin refs/heads/feature/meganav-master-phase1-core:refs/heads/feature/meganav-master-phase1-core
echo ~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~
echo
cd $MEGANAV_MASTER_DIRECTORY/hydra-base
git -c diff.mnemonicprefix=false -c core.quotepath=false fetch origin
git -c diff.mnemonicprefix=false -c core.quotepath=false pull origin master
git -c diff.mnemonicprefix=false -c core.quotepath=false submodule update --init --recursive
git -c diff.mnemonicprefix=false -c core.quotepath=false push -v --tags origin refs/heads/feature/meganav-master-phase1-base:refs/heads/feature/meganav-master-phase1-base
echo ~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~
echo
cd $MEGANAV_MASTER_DIRECTORY/hydra-edge-design
git -c diff.mnemonicprefix=false -c core.quotepath=false fetch origin
git -c diff.mnemonicprefix=false -c core.quotepath=false pull origin master
git -c diff.mnemonicprefix=false -c core.quotepath=false submodule update --init --recursive
git -c diff.mnemonicprefix=false -c core.quotepath=false push -v --tags origin refs/heads/feature/meganav-master-phase1-edgedesign:refs/heads/feature/meganav-master-phase1-edgedesign
echo ~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~
echo
