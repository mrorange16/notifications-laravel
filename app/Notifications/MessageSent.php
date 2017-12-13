<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class MessageSent extends Notification
{
    protected $message;
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($message)
    {
        $this->message=$message;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail','database'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        // php artisan vendor:publish --tag=laravel-notifications 
        //Nos devuelve las plantillas en este caso usamos la de notification que esta 
        //en resources/views/vendor
   /*     return (new MailMessage)
                    ->greetings($notifiable->name. ", ")
                    ->subject('Mensaje recibido desde tu sitio web')
                    ->line('Has recibido un mensaje.')
                    ->action('Clic aqui para ver el mensaje', route('messages.show',$this->message->id))
                    ->line('Gracias por usar nuestra app!');*/

                    return (new MailMessage)->view('emails.notifications',[
                        'user'=>$notifiable,
                        'msg'=>$this->message])->subject('Mensaje recibido desde desde test');


    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
         'link' => route('messages.show',$this->message->id),
         'text' => 'Mensaje de '. $this->message->sender->name,
         
        ];
    }
}
