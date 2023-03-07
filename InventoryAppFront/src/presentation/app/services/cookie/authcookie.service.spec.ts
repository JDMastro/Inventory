import { TestBed } from '@angular/core/testing';

import { AuthcookieService } from './authcookie.service';

describe('AuthcookieService', () => {
  let service: AuthcookieService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AuthcookieService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
