import { Injectable } from '@angular/core';
import { MessageService } from 'primeng/api';

//type Severities = 'success' | 'info' | 'warn' | 'error';

@Injectable()
export class NotificationService {

  constructor(private messageService: MessageService) {}

  onSuccessNotify(summary: string, detail: string){
    this.messageService.add({ severity: 'success', summary, detail })
  }

  onErrorNotify(summary: string, detail: string){
    this.messageService.add({ severity: 'error', summary, detail })
  }

  onInfoNotify(summary: string, detail: string){
    this.messageService.add({ severity: 'info', summary, detail })
  }

  onWarnNotify(summary: string, detail: string){
    this.messageService.add({ severity: 'warn', summary, detail })
  }

  /*notify(severity: Severities, summary: string, detail: string) {
    this.messageService.add({ severity, summary, detail })
  }*/
}
