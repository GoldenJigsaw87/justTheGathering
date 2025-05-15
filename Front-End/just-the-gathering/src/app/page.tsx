"use client"
import styles from "./page.module.css";
import login from "./login";




export default function Home() {
  return (
    <div className={styles.page}>
      <main className={styles.main}>
        <div className="head">
       <h1>Welcome!</h1>
       </div>
       <div>
       <h3>Would you like to make an update?</h3>
       <div className="add">
        <div className="user">
       <h4>add user</h4>
       <form>
        <input type="text" placeholder="username" /> 
       <input type="text" placeholder="password" />
       <input type="submit" placeholder="submit"/>
       </form>
       </div>
       <div className="admin">
       <h4>add admin</h4>
       <form>
        <input type="text" placeholder="username"/>
        <input type="text" placeholder="password"/>
        <input type="submit" placeholder="submit"/>
       </form>
       </div>
       </div>
       </div>
       
       </main>
    </div>
  );
}
