import styles from "./page.module.css"
type UserProps = {
  first: string
  last: string
}

export default function User({first, last}: UserProps){
  return (
    <div className="login">
<h2>{first} {last}</h2>
</div>
  )
}


// UPDATE `theGathering` SET `Name`='[value-1]',`Password`='[value-2]',`meetingLocation`='[value-3]',`meetingTime`='[value-4]' WHERE 1