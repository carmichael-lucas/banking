### Estrutura do projeto

```shell
.
├── app
│   ├── adapters
│   │   └── account_baas.rb
│   ├── controllers
│   │   └── accounts.rb
│   ├── helpers
│   │   ├── document_helper.rb
│   │   ├── email_helper.rb
│   │   └── name_helper.rb
│   ├── models
│   │   └── account.rb
│   ├── services
│   │   └── account.rb
│   └── validations
│       └── account.rb
└── lib
    └── banking
        ├── itau
        │   └── account.rb
        └── nubank
            └── account.rb
```