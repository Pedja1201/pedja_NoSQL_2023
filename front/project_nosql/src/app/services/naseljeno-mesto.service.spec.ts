import { TestBed } from '@angular/core/testing';

import { NaseljenoMestoService } from './naseljeno-mesto.service';

describe('NaseljenoMestoService', () => {
  let service: NaseljenoMestoService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(NaseljenoMestoService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
