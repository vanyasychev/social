import "./stories.scss";
import { useContext } from "react";
import { AuthContext } from "../../context/authContext";

const Stories = () => {
  const { currentUser } = useContext(AuthContext);

  const stories = [
    {
      id: 1,
      name: "Roman Kosenko",
      img: "https://i.pinimg.com/736x/d8/92/9d/d8929d2305a3055e10a16873d64d41d4.jpg",
    },
    {
      id: 2,
      name: "Dmitry Akimov",
      img: "https://i.pinimg.com/originals/8b/30/ea/8b30ea8eb7a764dbbf4a6e119c552d67.jpg",
    },
    {
      id: 3,
      name: "Kirill Salykin",
      img: "https://i.pinimg.com/originals/d5/16/e7/d516e762c81669684f7ec2f3a1e3f73a.jpg",
    },
    {
      id: 4,
      name: "Andrey Batalov",
      img: "https://i.pinimg.com/originals/90/37/c5/9037c5751727b7dedc299d5cee6fb70c.jpg",
    },
  ];

  return (
    <div className={"stories"}>
      <div className={"story"}>
        <img src={"/upload/" + currentUser.profilePic} alt={""} />
        <span>{currentUser.name}</span>
        <button>+</button>
      </div>
      {stories.map((story) => (
        <div className={"story"} key={story.id}>
          <img src={story.img} alt={""} />
          <span>{story.name}</span>
        </div>
      ))}
    </div>
  );
};

export default Stories;
