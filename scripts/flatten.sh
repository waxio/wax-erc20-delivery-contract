BASE_DIR=`pwd`

echo "Installing flatter"
git clone git@github.com:oraclesorg/oracles-combine-solidity.git ./node_modules/oracles-combine-solidity
cd ./node_modules/oracles-combine-solidity/
npm install
cd $BASE_DIR


echo "Copying zeplin contract files"
mkdir -p ./zeppelin-solidity/contracts
cp -R ./node_modules/zeppelin-solidity/contracts/* ./zeppelin-solidity/contracts

echo "Combine"
# combine
node ./node_modules/oracles-combine-solidity/index.js contracts/WaxToken.sol build/

cat build/WaxToken_flat.sol | tr '\n' ' ' > build/WaxToken_flat_oneline.sol

echo "Cleanup"
# remove NPM files
rm -rf ./zeppelin-solidity/contracts
