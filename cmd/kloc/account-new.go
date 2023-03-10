package main

import (
	"fmt"
	"github.com/alofeoluwafemi/trustoracle/node/klocaccount"
	"github.com/ethereum/go-ethereum/accounts"
	"github.com/ethereum/go-ethereum/accounts/keystore"
	"github.com/spf13/cobra"
	"log"
	"os"
)

func NodeCmd() *cobra.Command {
	var nodeCmd = &cobra.Command{
		Use:   "node",
		Short: "Wallet for node usage",
		PreRunE: func(cmd *cobra.Command, args []string) error {
			return incorrectUsageErr()
		},
		Run: func(cmd *cobra.Command, args []string) {
		},
	}

	nodeCmd.AddCommand(newKeyStore())
	nodeCmd.AddCommand(accountInfo())
	nodeCmd.AddCommand(runNode())

	return nodeCmd
}

func newKeyStore() *cobra.Command {

	var cmd = &cobra.Command{
		Use:   "account:create",
		Short: "Create new wallet for node",
		Run: func(cmd *cobra.Command, args []string) {

			var account accounts.Account
			var err error

			_, password, keyStorePath := klocaccount.Variables()

			exist, _ := klocaccount.IsCreated()

			if exist == true {
				log.Println("Using existing account...")

				account, _ = klocaccount.LoadAccount()
			} else {
				log.Println("Generating new account...")

				ks := keystore.NewKeyStore(keyStorePath, keystore.StandardScryptN, keystore.StandardScryptP)

				account, err = ks.NewAccount(password)
				if err != nil {
					fmt.Fprintln(os.Stderr, err)
					os.Exit(1)
				}
			}

			nodeAddress := account.Address.String()
			faucetUrl := "https://faucet.testnet-dev.trust.one/"

			log.Println("Wallet successfully created.")
			log.Printf("Node wallet address %v. \nVisit %v to fund your node before your node can fufill Oracle request\n", nodeAddress, faucetUrl)
		},
	}

	return cmd
}
