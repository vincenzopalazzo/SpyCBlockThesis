std::string buildAddressFromPubKey(std::string hex){
    auto opcode = hex.substr(hex.length() - 2, 2);
    auto opValue = std::stoul(opcode, nullptr, 16);
    auto opMap = bitcoinOpCode.opCodeList.find(opValue);
    opcode = optMap->second;
    Bytes bytes = hexBytes(key.c_str());
    //SHA256
    Sha256Hash shaHash = Sha256::getHash(bytes.data(), bytes.size());

    uint8_t result[Ripemd160::HASH_LEN];
    Ripemd160::getHash(shaHash.value, sizeof(shaHash), result);

    char address[36];
    Base58Check::pubkeyHashToBase58Check(result, 0x00, address);
    return std::string(address);
}
