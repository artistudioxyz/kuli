![screenshot](screenshot.png)
Isolated environment for building javascript and php project

![Stars](https://img.shields.io/github/stars/artistudioxyz/kuli?style=social)
![Size](https://img.shields.io/github/repo-size/artistudioxyz/kuli)

<table>
    <tbody>
        <tr>
            <td>Packages</td>
            <td class="grid grid-cols-6">
                <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/composer/composer-original.svg" alt="Composer" height="20">
                <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nodejs/nodejs-original.svg" alt="Node Js" height="20">
            </td>
        </tr>
    </tbody>
</table>

## 📚 Installation
- via Docker Run : `docker run --rm --interactive --tty ghcr.io/artistudioxyz/kuli:latest <command>`
- via Docker Run with Mount Volume :
```
docker run --rm --interactive --tty \
    --volume $PWD:/app \
    ghcr.io/artistudioxyz/kuli:latest <command>
```

- Sample Command :
    - Composer : `composer update`
    - Node : `npm i`

## 🔥 Development
- Manually build package : `docker-compose up --build`