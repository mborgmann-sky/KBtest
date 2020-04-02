App.onLaunch = function(optoins) {
    console.log("Hello TVML!");
    
    var resourceLoader = new ResourceLoaderJS(NativeResourceLoader.create());
    //var initialDoc = resourceLoader.getDocument("text.tvml");
    //var initialDoc = resourceLoader.getDocument("form.tvml");
    var initialDoc = resourceLoader.getDocument("search.tvml");
    navigationDocument.pushDocument(initialDoc);
}


class ResourceLoaderJS {
    
    constructor(nativeResourceLoader) {
        this.nativeResourceLoader = nativeResourceLoader;
        this.domParser = new DOMParser();
    }
    
    getDocument(name) {
        var docString = this.nativeResourceLoader.loadBundleResource(name);
        return this.domParser.parseFromString(docString, "application/xml");
    }
    
}
