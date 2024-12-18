## The https://briangetsbinary.com nextjs https and localhost tutorial
This repo is an example of configuring a [Next.js](https://nextjs.org/) application for https development on localhost usinga  windows development environment. It was bootstraped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).


## Getting Started
Step by step instructions with an explanation can be viewed on the following blog post https://www.briangetsbinary.com/nextjs/software%20engineering/2023/04/26/nextjs-configuring-localhost-ssl.html

### Install choco

```terminal
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### Install openssl for Windows
```terminal
choco install openssl
```


### Generate localhost certificate
From the root of the repo run the following 

```terminal
./generateSslCert.ps1
```

### Install generated certificate
Install the cert by double clicking on the certificate Install Certificate > Current User > Place all Certificates in the following store > Browse > Trusted Root Certification Authorities > Ok

### Install npm Dependencies
First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

### run nextjs application
```bash
npm run start
```

Open [http://localhost:3001](http://localhost:3001) with your browser to see the result.