export class User {
    constructor(
        public fname: string = "",
        public lname: string = "",
        public email: string = "",
        public password: string = "",
        public confirmpw: string = "",
        public street: string = "",
        public apt: string = "",
        public city: string = "",
        public state: string = "",
        public lucky: boolean = null
    ){
        

    }
}