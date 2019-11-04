def __init__(self, blockchain):
        self.version = uint4(blockchain)
        self.inCount = varint(blockchain)
        self.isWitness = False
        if self.inCount == 0x00:
            self.mark = 0
            self.flag = varint(blockchain)
            if self.flag == 0x01:
                self.isWitness = True
                self.inCount = varint(blockchain)
        self.inputs = []
        self.seq = 1
        for i in range(0, self.inCount):
            input = txInput(blockchain, self.isWitness)
            self.inputs.append(input)
        self.outCount = varint(blockchain)
        self.outputs = []
        if self.outCount > 0:
            for i in range(0, self.outCount):
                output = txOutput(blockchain)
                self.outputs.append(output)
        self.witness = []
        if self.isWitness:
            for i in range(0, self.inCount):
                singleWitness = txWitness(blockchain)
                self.witness.append(singleWitness)
        self.lockTime = uint4(blockchain)
