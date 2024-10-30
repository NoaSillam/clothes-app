// App.res
@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  <div className="p-6">


    <HelloWorld name="Mika" />
  </div>
}
