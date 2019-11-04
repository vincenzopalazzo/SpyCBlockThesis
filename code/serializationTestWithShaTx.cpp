TEST(hash_test, first_test_comparable_transaction_hash_value_readed)
{
    string pathMockRoot = ConfiguratorSingleton::getInstance().getPathFileMockTest() + "/";

    Block block;

    std::ifstream fileOut(pathMockRoot.append("bitcoin/block/blk00000.dat"));

    block.decode(fileOut);
    fileOut.close();

    string hexForm = SerializationUtil::toSerealizeForm(
    block.getRawTransactions().at(0).getVersion());

    hexForm += SerializationUtil::toSerealizeForm(
    block.getRawTransactions().at(0).getNumberTxIn());

    hexForm += block.getRawTransactions().at(0)
    .getTxIn().at(0).getOutpoint().getHash().GetHex();

    hexForm += SerializationUtil::toSerealizeForm(
    block.getRawTransactions().at(0)
    .getTxIn().at(0).getOutpoint().getN());

    hexForm += SerializationUtil::toSerealizeForm(
    block.getRawTransactions().at(0).getTxIn().at(0)
    .getScript().getScriptLenght());

    hexForm += block.getRawTransactions().at(0).getTxIn().at(0)
                    .getScript().getRawScriptString().substr(0,
                    block.getRawTransactions().at(0).getTxIn().at(0).getScript().getScriptLenght().getValue() * 2);

    hexForm += SerializationUtil::toSerealizeForm(
    block.getRawTransactions().at(0).getTxIn().at(0).getSequences());

    hexForm += SerializationUtil::toSerealizeForm(
    block.getRawTransactions().at(0).getNumberTxOut());

    hexForm += SerializationUtil::toSerealizeForm(
    block.getRawTransactions().at(0).getTxOut().at(0).getNValue());

    hexForm += SerializationUtil::toSerealizeForm(
    block.getRawTransactions().at(0).getTxOut().at(0).getScript().getScriptLenght());

    hexForm += block.getRawTransactions().at(0).getTxOut().at(0)
                    .getScript().getRawScriptString().substr(0,
                    block.getRawTransactions().at(0).getTxOut().at(0)
                    .getScript().getScriptLenght().getValue() * 2);

    hexForm += SerializationUtil::toSerealizeForm(block.getRawTransactions().at(0).getLockTime());

    vector<unsigned char> vectorByte = spyCBlock::UtilCrypto::ToHexIntoVectorByte(hexForm);

    Sha256Hash shaHash = Sha256::getDoubleHash(vectorByte.data(), vectorByte.size());

    EXPECT_EQ(shaHash.ToStringForProtocol(), "4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b");
}
