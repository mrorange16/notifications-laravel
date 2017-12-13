<template>
       <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">  
                             
                                    
                                <span class="glyphicon glyphicon-bell"></span>

                                <span class="badge" v-if="notifications.length" v-text="notifications.length"></span>
                            
                            </a>
                            <ul class="dropdown-menu" v-if="notifications.length" >
                             <li v-for="notification in notifications">  
                             <a @click="markAsRead(notification)" :href="notification.data.link" v-text="notification.data.text"></a> </li>
                            <li class="divider"> </li>
                            <li> <a @click="markAllAsRead" href="#">Marcar todo como leido</a> </li>
                            </ul>
                        </li>
</template>

<script>
    export default {
    data(){
        return {
            notifications:[]
        }
    },
        mounted() {
          axios.get('/notificaciones').then(res=>{
                this.notifications = res.data;
          })
        },
        methods:{
            markAsRead(notification){
                axios.patch('notificaciones/' + notification.id).then(res=>{
                this.notifications = res.data;
                });
            },
             markAllAsRead(){
                this.notifications.forEach(notification =>{
                this. markAsRead(notification)
                });
            }
        }
    }
</script>
