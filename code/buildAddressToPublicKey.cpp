std::string buildAddressFromPubKey(std::string pubkey){
    opcode = hex.substr(hex.length() - 2, 2);
    optValue = std::stoul(opcode, nullptr, 16);
    optMap = bitcoinOpCode.opCodeList.find(optValue);
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
