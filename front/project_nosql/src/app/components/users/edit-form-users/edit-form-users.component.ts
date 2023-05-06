import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { User } from 'src/app/model/user';
import { LoginService } from 'src/app/services/login.service';
import { UsersService } from 'src/app/services/users.service';

@Component({
  selector: 'app-edit-form-users',
  templateUrl: './edit-form-users.component.html',
  styleUrls: ['./edit-form-users.component.css']
})
export class EditFormUsersComponent implements OnInit {
  user : User = new User();
  userId : string | null = 'id';
  errorMessage : string = '';
  
  constructor(
    private service: UsersService,
    private route: ActivatedRoute,
    private router: Router,
    public loginService : LoginService) { }


  ngOnInit(): void {
    this.userId = this.route.snapshot.paramMap.get('id');
    this.getUserId();
  }

  getUserId = () => {
    if(this.userId != 'id' && this.userId != null)
      this.service.getOne(this.userId)
        .subscribe(user => this.user = user[0]);
  }

  update(user: User) {
    if (user.id !== undefined) {
      this.service.update(user).subscribe({
        next: () => {this.service.getAll(); this.router.navigate(['/users']);
      },error: (error) => {this.errorMessage = error.error}
      });
    }
  }

  goBackUsers(){
    this.router.navigate(['/users']);  
  }

}
