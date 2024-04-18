function fn() {   
    var env = karate.env; // get java system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
      env = 'dev';
    }
    if (env == 'dev') {
      baseURL = 'https://reqres.in'
    } else if (env == 'hom') {
      baseURL = 'https://reqres.in'
    }
    var config = {
      env: env,
      baseURL: baseURL,
    }
    return config;
}