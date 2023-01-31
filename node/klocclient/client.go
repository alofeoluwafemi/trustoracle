package klocclient

import (
	"github.com/ethereum/go-ethereum/ethclient"
	"log"
	"os"
)

const (
	ChainId = 15555
	RPCUrl  = "https://api.testnet-dev.trust.one" // wss://api.baobab.klaytn.net:8652
)

func Connection() *ethclient.Client {
	conn, err := ethclient.Dial(RPCUrl)
	if err != nil {
		log.Print(err)
		os.Exit(1)
	}

	return conn
}
