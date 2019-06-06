##Contains

* bower
* gulp-cli 
* grunt-cli
* gulp
* grunt
* svgo


## Usage
### Run

```
docker run -it --rm -v $(pwd):/src grozwalker/react-app npm i

docker run -it -p 3000:3000 -p 35729:35729 --rm -v $(pwd):/src grozwalker/rutorika-frontend-tools grunt watch-project-server
```

Then open http://localhost:3000/ to see your app.

### Build Application

When you’re ready to deploy to production, create a minified bundle with 

```
docker run -it --rm -v $(pwd):/src grozwalker/rutorika-frontend-tools npm run build.

```

See more: https://github.com/facebook/create-react-app

### Use svgo

```
docker run -it --rm -v $(pwd):/src grozwalker/
rutorika-frontend-tools svgo file-name

```
