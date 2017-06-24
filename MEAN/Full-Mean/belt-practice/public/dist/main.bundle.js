webpackJsonp([1],{

/***/ "../../../../../src async recursive":
/***/ (function(module, exports) {

function webpackEmptyContext(req) {
	throw new Error("Cannot find module '" + req + "'.");
}
webpackEmptyContext.keys = function() { return []; };
webpackEmptyContext.resolve = webpackEmptyContext;
module.exports = webpackEmptyContext;
webpackEmptyContext.id = "../../../../../src async recursive";

/***/ }),

/***/ "../../../../../src/app/app-routing.module.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_app_dashboard_dashboard_component__ = __webpack_require__("../../../../../src/app/dashboard/dashboard.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_app_login_login_component__ = __webpack_require__("../../../../../src/app/login/login.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_app_topic_topic_component__ = __webpack_require__("../../../../../src/app/topic/topic.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_app_user_profile_user_profile_component__ = __webpack_require__("../../../../../src/app/user-profile/user-profile.component.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppRoutingModule; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};






var routes = [
    {
        path: '',
        children: []
    },
    { path: 'dashboard', component: __WEBPACK_IMPORTED_MODULE_2_app_dashboard_dashboard_component__["a" /* DashboardComponent */] },
    { path: '', component: __WEBPACK_IMPORTED_MODULE_3_app_login_login_component__["a" /* LoginComponent */] },
    { path: 'topic/:id', component: __WEBPACK_IMPORTED_MODULE_4_app_topic_topic_component__["a" /* TopicComponent */] },
    { path: 'user/:id', component: __WEBPACK_IMPORTED_MODULE_5_app_user_profile_user_profile_component__["a" /* UserProfileComponent */] },
];
var AppRoutingModule = (function () {
    function AppRoutingModule() {
    }
    return AppRoutingModule;
}());
AppRoutingModule = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["NgModule"])({
        imports: [__WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* RouterModule */].forRoot(routes)],
        exports: [__WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* RouterModule */]]
    })
], AppRoutingModule);

//# sourceMappingURL=app-routing.module.js.map

/***/ }),

/***/ "../../../../../src/app/app.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".parent{\n    border: 5px solid blue;\n}", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/app.component.html":
/***/ (function(module, exports) {

module.exports = "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n\n<div class=\"parent\"> \n  <h2>Parent</h2>\n\n  <a [routerLink] =\"['/']\" (click)='enableLogin()'>Home</a>\n\n  {{username | json}}\n\n  <div *ngIf=\"clicked == null\">\n    <form>\n      Username <input type=\"text\" name=\"username\" [(ngModel)]=\"username.name\">\n      <button type=\"button\" (click)=\"submitForm()\">Submit</button>\n    </form>\n  </div>\n\n<router-outlet></router-outlet>\n\n\n</div>"

/***/ }),

/***/ "../../../../../src/app/app.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_app_http_service__ = __webpack_require__("../../../../../src/app/http.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_angular2_cookie_services_cookies_service__ = __webpack_require__("../../../../angular2-cookie/services/cookies.service.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_angular2_cookie_services_cookies_service___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_angular2_cookie_services_cookies_service__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var AppComponent = (function () {
    function AppComponent(_httpService, _router, _cookieService) {
        this._httpService = _httpService;
        this._router = _router;
        this._cookieService = _cookieService;
        this.clicked = null;
        this.username = { name: '' };
    }
    AppComponent.prototype.submitForm = function () {
        var _this = this;
        //making a cookie --- passing in the name
        this._cookieService.put('thisIsASecret', this.username.name);
        this.clicked = true;
        this._httpService.addNewUser(this.username)
            .then(function (id) {
            console.log("we posted to the DB in the component.ts, here is the user_id: ", id);
            //get the person who just logged in or the new users ID:
            _this._cookieService.put('userid', id);
            _this._router.navigate(['/dashboard']);
        })
            .catch(function (err) {
            console.log("unable to post to the DB");
        });
    };
    AppComponent.prototype.enableLogin = function () {
        this.clicked = null;
        this.username = { name: '' };
    };
    return AppComponent;
}());
AppComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: 'app-root',
        template: __webpack_require__("../../../../../src/app/app.component.html"),
        styles: [__webpack_require__("../../../../../src/app/app.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2_app_http_service__["a" /* HttpService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2_app_http_service__["a" /* HttpService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3_angular2_cookie_services_cookies_service__["CookieService"] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3_angular2_cookie_services_cookies_service__["CookieService"]) === "function" && _c || Object])
], AppComponent);

var _a, _b, _c;
//# sourceMappingURL=app.component.js.map

/***/ }),

/***/ "../../../../../src/app/app.module.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser__ = __webpack_require__("../../../platform-browser/@angular/platform-browser.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__app_routing_module__ = __webpack_require__("../../../../../src/app/app-routing.module.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__angular_forms__ = __webpack_require__("../../../forms/@angular/forms.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_app_http_service__ = __webpack_require__("../../../../../src/app/http.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_angular2_cookie_services_cookies_service__ = __webpack_require__("../../../../angular2-cookie/services/cookies.service.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_angular2_cookie_services_cookies_service___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_angular2_cookie_services_cookies_service__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__app_component__ = __webpack_require__("../../../../../src/app/app.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__login_login_component__ = __webpack_require__("../../../../../src/app/login/login.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__dashboard_dashboard_component__ = __webpack_require__("../../../../../src/app/dashboard/dashboard.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__topic_topic_component__ = __webpack_require__("../../../../../src/app/topic/topic.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__user_profile_user_profile_component__ = __webpack_require__("../../../../../src/app/user-profile/user-profile.component.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppModule; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};












var AppModule = (function () {
    function AppModule() {
    }
    return AppModule;
}());
AppModule = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_1__angular_core__["NgModule"])({
        declarations: [
            __WEBPACK_IMPORTED_MODULE_7__app_component__["a" /* AppComponent */],
            __WEBPACK_IMPORTED_MODULE_8__login_login_component__["a" /* LoginComponent */],
            __WEBPACK_IMPORTED_MODULE_9__dashboard_dashboard_component__["a" /* DashboardComponent */],
            __WEBPACK_IMPORTED_MODULE_10__topic_topic_component__["a" /* TopicComponent */],
            __WEBPACK_IMPORTED_MODULE_11__user_profile_user_profile_component__["a" /* UserProfileComponent */]
        ],
        imports: [
            __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* HttpModule */],
            __WEBPACK_IMPORTED_MODULE_4__angular_forms__["a" /* FormsModule */],
            __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser__["a" /* BrowserModule */],
            __WEBPACK_IMPORTED_MODULE_3__app_routing_module__["a" /* AppRoutingModule */]
        ],
        providers: [__WEBPACK_IMPORTED_MODULE_5_app_http_service__["a" /* HttpService */], __WEBPACK_IMPORTED_MODULE_6_angular2_cookie_services_cookies_service__["CookieService"]],
        bootstrap: [__WEBPACK_IMPORTED_MODULE_7__app_component__["a" /* AppComponent */]]
    })
], AppModule);

//# sourceMappingURL=app.module.js.map

/***/ }),

/***/ "../../../../../src/app/dashboard/dashboard.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".dashboard {\n    border: 5px solid red;\n}", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/dashboard/dashboard.component.html":
/***/ (function(module, exports) {

module.exports = "\n\n<div class=\"dashboard\">\n  <h1> Welcome {{name}}</h1>\n  \n  <table class=\"table table-striped\">\n    <thead>\n      <tr>\n        <th>Category</th>\n        <th>Topic</th>\n        <th>Username</th>\n        <th>Posts</th>\n      </tr>\n    </thead>\n    <tbody>\n     <tr *ngFor='let topic of list_of_topics'>\n      <td>{{ topic.category }}</td>\n      <td><a [routerLink]=\"['/topic/', topic._id]\">{{ topic.title }}</a></td>\n      <td>{{ topic.username }}</td>\n      <td>{{ topic.count }}</td>\n    </tr>\n    </tbody>\n  </table>\n\n  <p>---------------------------------------------------------------</p>\n\n  {{topic_obj | json }}\n\n  <strong>{{list_of_topics | json}}</strong>\n\n  <form>\n  <div class=\"form-group\">\n    <label for=\"topic\">Topic:</label>\n    <input type=\"text\" class=\"form-control\" name=\"title\" [(ngModel)]=\"topic_obj.title\">\n  </div>\n  <div class=\"form-group\">\n    <label for=\"description\">Description:</label>\n    <textarea type=\"text\" class=\"form-control\" name=\"text\" [(ngModel)]=\"topic_obj.text\"></textarea>\n  </div>\n  \n  <label for=\"category\">Category:</label>\n  <select name=\"category\" [(ngModel)]=\"topic_obj.category\">\n    <option value=\"html\">HTML</option>\n    <option value=\"javascript\">JAVASCRIPT</option>\n    <option value=\"python\">PYTHON</option>\n    <option value=\"ruby\">RUBY</option>\n  </select>\n\n<br>\n<br>\n  <button type=\"submit\" class=\"btn btn-primary\" (click)=\"postTopic()\">Submit</button>\n</form>\n\n\n\n\n\n\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/dashboard/dashboard.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service__ = __webpack_require__("../../../../angular2-cookie/services/cookies.service.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_app_http_service__ = __webpack_require__("../../../../../src/app/http.service.ts");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return DashboardComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var DashboardComponent = (function () {
    function DashboardComponent(_cookieService, _httpService) {
        this._cookieService = _cookieService;
        this._httpService = _httpService;
        //setting variables to the cookies
        this.name = this._cookieService.get('thisIsASecret');
        this.userid = this._cookieService.get('userid');
        //creating a object that will be passed on
        this.topic_obj = {
            title: '',
            text: '',
            category: '',
            username: '',
            _user: ''
        };
        this.list_of_topics = [];
    }
    DashboardComponent.prototype.ngOnInit = function () {
        this.getTopics();
    };
    DashboardComponent.prototype.getTopics = function () {
        var _this = this;
        this._httpService.getTopics()
            .then(function (data) {
            _this.list_of_topics = data;
        })
            .catch(function (err) {
            console.log("there was an error getting the topics");
        });
    };
    DashboardComponent.prototype.postTopic = function () {
        var _this = this;
        this.topic_obj._user = this.userid;
        this.topic_obj.username = this.name;
        this._httpService.postTopic(this.topic_obj)
            .then(function (data) {
            console.log("successfully posted topics to the database");
            _this.getTopics();
        })
            .catch(function (err) {
            console.log("did not post to the database from the dashboard.component.ts");
        });
    };
    return DashboardComponent;
}());
DashboardComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: 'app-dashboard',
        template: __webpack_require__("../../../../../src/app/dashboard/dashboard.component.html"),
        styles: [__webpack_require__("../../../../../src/app/dashboard/dashboard.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service__["CookieService"] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service__["CookieService"]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2_app_http_service__["a" /* HttpService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2_app_http_service__["a" /* HttpService */]) === "function" && _b || Object])
], DashboardComponent);

var _a, _b;
//# sourceMappingURL=dashboard.component.js.map

/***/ }),

/***/ "../../../../../src/app/http.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs__ = __webpack_require__("../../../../rxjs/Rx.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return HttpService; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var HttpService = (function () {
    function HttpService(_http) {
        this._http = _http;
    }
    HttpService.prototype.addNewUser = function (user) {
        // console.log("we are passing in this user name in the service", user);
        return this._http.post("/users", user).map(function (data) { return data.json(); }).toPromise();
    };
    HttpService.prototype.getOneTopic = function (id) {
        console.log(id);
        return this._http.get("/topic/" + id).map(function (data) { return data.json(); }).toPromise();
    };
    //making a get request when a link was clicked on a username
    //using params in the url to pass into the get request
    HttpService.prototype.loadUser = function (id) {
        console.log("the id we are passing in is: ", id);
        return this._http.get("/user/" + id).map(function (data) { return data.json(); }).toPromise();
    };
    HttpService.prototype.postTopic = function (topic_obj) {
        // console.log("we are passing in the post to the server.js file ", post)
        return this._http.post("/add_topic", topic_obj).map(function (data) { return data.json(); }).toPromise();
    };
    HttpService.prototype.getTopics = function () {
        return this._http.get('/topics').map(function (data) { return data.json(); }).toPromise();
    };
    HttpService.prototype.postAPost = function (post_info) {
        console.log("in the service.ts: ", post_info);
        return this._http.post("/add_post", post_info).map(function (data) { return data.json(); }).toPromise();
    };
    return HttpService;
}());
HttpService = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Injectable"])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_http__["b" /* Http */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_http__["b" /* Http */]) === "function" && _a || Object])
], HttpService);

var _a;
//# sourceMappingURL=http.service.js.map

/***/ }),

/***/ "../../../../../src/app/login/login.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/login/login.component.html":
/***/ (function(module, exports) {

module.exports = "<p>\n  login works!\n</p>\n"

/***/ }),

/***/ "../../../../../src/app/login/login.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LoginComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};

var LoginComponent = (function () {
    function LoginComponent() {
    }
    LoginComponent.prototype.ngOnInit = function () {
    };
    return LoginComponent;
}());
LoginComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: 'app-login',
        template: __webpack_require__("../../../../../src/app/login/login.component.html"),
        styles: [__webpack_require__("../../../../../src/app/login/login.component.css")]
    }),
    __metadata("design:paramtypes", [])
], LoginComponent);

//# sourceMappingURL=login.component.js.map

/***/ }),

/***/ "../../../../../src/app/topic/topic.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".topic{\n    border: 5px soild yellow;\n}\n\n.line{\n    width: 600px;\n    height: 5px;\n    background-color: black;\n}", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/topic/topic.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"topic\">\n  \n  <h3><a [routerLink]=\"['/user', userid]\">{{name}}</a> posted a topic </h3>\n\n  \n<div *ngIf='selected_topic'>\n  <strong><p>{{selected_topic | json }}</p></strong>\n\n    <strong><h3>{{selected_topic.title}}</h3></strong>\n\n    <p>Description {{selected_topic.text}}<p>\n</div>\n<br>\n<br>\n<br>\n\n{{post_obj | json}}\n<form>\n  <div class=\"form-group\">\n    <label for=\"content\">Post you answer here..</label>\n    <textarea type=\"text\" class=\"form-control\" name=\"content\" placeholder=\"Your Post\" [(ngModel)]=\"post_obj.content\"></textarea>\n  </div>\n\n  <button type=\"submit\" class=\"btn btn-primary\" (click)=\"makeAPost()\">Post</button>\n</form>\n\n<div class=\"line\"></div>\n\n<div *ngIf='selected_topic'>\n\n<ul *ngFor=\"let post of selected_topic.posts\">\n  <li><a [routerLink]=\"['/user', post._user]\">{{post.username}}</a> {{post.content}}</li>\n</ul>\n\n\n\n</div>\n\n\n\n\n  \n\n\n  \n\n\n\n\n\n</div>"

/***/ }),

/***/ "../../../../../src/app/topic/topic.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_app_http_service__ = __webpack_require__("../../../../../src/app/http.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_angular2_cookie_services_cookies_service__ = __webpack_require__("../../../../angular2-cookie/services/cookies.service.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_angular2_cookie_services_cookies_service___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_angular2_cookie_services_cookies_service__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return TopicComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var TopicComponent = (function () {
    function TopicComponent(_cookieService, _httpService, _route) {
        this._cookieService = _cookieService;
        this._httpService = _httpService;
        this._route = _route;
        this.name = this._cookieService.get('thisIsASecret');
        this.userid = this._cookieService.get('userid');
        //set a variable temp to be null
        this.topic_id = null;
        this.sub = null;
        this.selected_topic = null;
        //creating a object that will be passed on
        this.post_obj = {
            username: '',
            content: '',
            _user: null,
            _topic: null,
        };
    }
    TopicComponent.prototype.ngOnInit = function () {
        var _this = this;
        //saving the parameter here on init and subscribing to it
        this.sub = this._route.params.subscribe(function (params) {
            _this.topic_id = params.id;
        });
        this.loadOneTopic();
    };
    TopicComponent.prototype.loadOneTopic = function () {
        var _this = this;
        this._httpService.getOneTopic(this.topic_id)
            .then(function (data) {
            console.log("the data we got back in the getOneTopic is: ", data);
            _this.selected_topic = data;
        })
            .catch(function (err) {
            console.log("we got an error!");
        });
    };
    // loadAllPosts(){
    //   this._httpService.getAllPosts()
    //     .then((data) => {
    //     })
    // }
    TopicComponent.prototype.makeAPost = function () {
        var _this = this;
        //adding the cookies userid and the topic id that was grabbed from the param
        this.post_obj._topic = this.topic_id;
        this.post_obj._user = this.userid;
        this.post_obj.username = this.name;
        console.log("the obj is: ", this.post_obj);
        this._httpService.postAPost(this.post_obj)
            .then(function (data) {
            console.log("we made a good post to the POST in the topic.components.ts");
            _this.loadOneTopic();
        })
            .catch(function (err) {
            console.log("error in the topic.component.ts");
        });
    };
    TopicComponent.prototype.ngOnDestroy = function () {
        console.log("unsubscribing from topics");
        this.sub.unsubscribe();
    };
    return TopicComponent;
}());
TopicComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: 'app-topic',
        template: __webpack_require__("../../../../../src/app/topic/topic.component.html"),
        styles: [__webpack_require__("../../../../../src/app/topic/topic.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2_angular2_cookie_services_cookies_service__["CookieService"] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2_angular2_cookie_services_cookies_service__["CookieService"]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1_app_http_service__["a" /* HttpService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1_app_http_service__["a" /* HttpService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* ActivatedRoute */]) === "function" && _c || Object])
], TopicComponent);

var _a, _b, _c;
//# sourceMappingURL=topic.component.js.map

/***/ }),

/***/ "../../../../../src/app/user-profile/user-profile.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/user-profile/user-profile.component.html":
/***/ (function(module, exports) {

module.exports = "<div *ngIf=\"selected_user\">\n  {{selected_user | json}}\n\n<div *ngIf=\"selected_user._comments\">\n    <h2>Username: {{selected_user.name | json}}</h2>\n    <h3>Posted....</h3>\n    <h4>Topics: {{selected_user._topics | json}}</h4>\n    <h4>Posts: {{selected_user._posts | json}}</h4>\n    <h4>Comments: {{selected_user._comments | json}}</h4>\n</div>\n\n</div>"

/***/ }),

/***/ "../../../../../src/app/user-profile/user-profile.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service__ = __webpack_require__("../../../../angular2-cookie/services/cookies.service.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_app_http_service__ = __webpack_require__("../../../../../src/app/http.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return UserProfileComponent; });
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var UserProfileComponent = (function () {
    function UserProfileComponent(_cookieService, _httpService, _route) {
        this._cookieService = _cookieService;
        this._httpService = _httpService;
        this._route = _route;
        this.name = this._cookieService.get('thisIsASecret');
        this.userid = this._cookieService.get('userid');
        this.sub = null;
        this.param_user_id = null;
        this.selected_user = null;
    }
    UserProfileComponent.prototype.ngOnInit = function () {
        var _this = this;
        //need to subscribe to the user_id passed into the url
        //saving the parameter here on init and subscribing to it
        this.sub = this._route.params.subscribe(function (params) {
            _this.param_user_id = params.id;
        });
        this.loadUser();
    };
    UserProfileComponent.prototype.loadUser = function () {
        var _this = this;
        this._httpService.loadUser(this.param_user_id)
            .then(function (data) {
            console.log("the data we got back in the loadUser is: ", data);
            _this.selected_user = data;
        })
            .catch(function (err) {
            console.log("we got an error!");
        });
    };
    UserProfileComponent.prototype.ngOnDestroy = function () {
        console.log("unsubscribing from selected_user");
        this.sub.unsubscribe();
    };
    return UserProfileComponent;
}());
UserProfileComponent = __decorate([
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["Component"])({
        selector: 'app-user-profile',
        template: __webpack_require__("../../../../../src/app/user-profile/user-profile.component.html"),
        styles: [__webpack_require__("../../../../../src/app/user-profile/user-profile.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service__["CookieService"] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1_angular2_cookie_services_cookies_service__["CookieService"]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2_app_http_service__["a" /* HttpService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2_app_http_service__["a" /* HttpService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_router__["b" /* ActivatedRoute */]) === "function" && _c || Object])
], UserProfileComponent);

var _a, _b, _c;
//# sourceMappingURL=user-profile.component.js.map

/***/ }),

/***/ "../../../../../src/environments/environment.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return environment; });
// The file contents for the current environment will overwrite these during build.
// The build system defaults to the dev environment which uses `environment.ts`, but if you do
// `ng build --env=prod` then `environment.prod.ts` will be used instead.
// The list of which env maps to which file can be found in `.angular-cli.json`.
// The file contents for the current environment will overwrite these during build.
var environment = {
    production: false
};
//# sourceMappingURL=environment.js.map

/***/ }),

/***/ "../../../../../src/main.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_platform_browser_dynamic__ = __webpack_require__("../../../platform-browser-dynamic/@angular/platform-browser-dynamic.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__app_app_module__ = __webpack_require__("../../../../../src/app/app.module.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__environments_environment__ = __webpack_require__("../../../../../src/environments/environment.ts");




if (__WEBPACK_IMPORTED_MODULE_3__environments_environment__["a" /* environment */].production) {
    __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0__angular_core__["enableProdMode"])();
}
__webpack_require__.i(__WEBPACK_IMPORTED_MODULE_1__angular_platform_browser_dynamic__["a" /* platformBrowserDynamic */])().bootstrapModule(__WEBPACK_IMPORTED_MODULE_2__app_app_module__["a" /* AppModule */]);
//# sourceMappingURL=main.js.map

/***/ }),

/***/ 0:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__("../../../../../src/main.ts");


/***/ })

},[0]);
//# sourceMappingURL=main.bundle.js.map