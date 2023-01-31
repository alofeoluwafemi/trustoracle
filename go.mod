module github.com/alofeoluwafemi/trustoracle

go 1.18

replace (
	github.com/alofeoluwafemi/trustoracle/node => /Users/drewhyte/Sites/BLOCKCHAIN/trustoracle/node
	github.com/alofeoluwafemi/trustoracle/node/klocaccount => /Users/drewhyte/Sites/BLOCKCHAIN/trustoracle/node/klocaccount
	github.com/alofeoluwafemi/trustoracle/node/klocclient => /Users/drewhyte/Sites/BLOCKCHAIN/trustoracle/node/klocclient
	github.com/alofeoluwafemi/trustoracle/node/klocoracle => /Users/drewhyte/Sites/BLOCKCHAIN/trustoracle/node/klocoracle
)

require (
	github.com/ethereum/go-ethereum v1.10.26
	github.com/go-resty/resty/v2 v2.7.0
	github.com/joho/godotenv v1.4.0
	github.com/spf13/cobra v0.0.5
)

require (
	github.com/StackExchange/wmi v0.0.0-20180116203802-5d049714c4a6 // indirect
	github.com/btcsuite/btcd/btcec/v2 v2.2.0 // indirect
	github.com/cespare/cp v1.0.0 // indirect
	github.com/deckarep/golang-set v1.8.0 // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.0.1 // indirect
	github.com/go-ole/go-ole v1.2.1 // indirect
	github.com/go-stack/stack v1.8.0 // indirect
	github.com/google/uuid v1.2.0 // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/prometheus/tsdb v0.10.0 // indirect
	github.com/rjeczalik/notify v0.9.1 // indirect
	github.com/shirou/gopsutil v3.21.4-0.20210419000835-c7a38de76ee5+incompatible // indirect
	github.com/spf13/pflag v1.0.3 // indirect
	github.com/tklauser/go-sysconf v0.3.5 // indirect
	github.com/tklauser/numcpus v0.2.2 // indirect
	golang.org/x/crypto v0.0.0-20220214200702-86341886e292 // indirect
	golang.org/x/net v0.0.0-20220607020251-c690dde0001d // indirect
	golang.org/x/sys v0.0.0-20220520151302-bc2c85ada10a // indirect
	gopkg.in/natefinch/npipe.v2 v2.0.0-20160621034901-c1b8fa8bdcce // indirect
)
