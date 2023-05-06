import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { User } from 'src/app/model/user';
import { LoginService } from 'src/app/services/login.service';
import { UsersService } from 'src/app/services/users.service';

@Component({
  selector: 'app-add-users',
  templateUrl: './add-users.component.html',
  styleUrls: ['./add-users.component.css']
})
export class AddUsersComponent implements OnInit {
  user : User = new User();
  errorMessage : string = '';

  constructor(
    private service: UsersService,
    private router: Router,
    public loginService : LoginService) { }


  ngOnInit(): void {
  }

  createUser(user: User) {
    if(user !== undefined) {
      this.service.create(user).subscribe({
        next : (value: any) => { this.router.navigate(['/users']) }, 
        error: (error) => {this.errorMessage = error.error}
      })
    }
  }

  goBackUsers(){
    this.router.navigate(['/users']);  
  }

}
