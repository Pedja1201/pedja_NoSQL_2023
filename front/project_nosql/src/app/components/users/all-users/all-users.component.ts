import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { User } from 'src/app/model/user';
import { UsersService } from 'src/app/services/users.service';

@Component({
  selector: 'app-all-users',
  templateUrl: './all-users.component.html',
  styleUrls: ['./all-users.component.css']
})
export class AllUsersComponent implements OnInit {

  users : User[] = [];

  constructor(private service : UsersService, private router : Router) {
   }

   ngOnInit(): void {
    this.getAll();
  }

  getAll() {
    this.service.getAll().subscribe({
      next: (value: any) => { this.users = value }
    });
  }


  delete = (us: User) => {
    this.service.delete(us)
      .subscribe(resp => this.getAll());
  }

  edit(user:User){
    this.router.navigate(['/edit-users', user.id])
  }

  addUserForm(){
    this.router.navigate(['/add-users'])
  }

}
