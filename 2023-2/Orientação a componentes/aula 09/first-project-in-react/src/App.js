import "./App.css";
import Gallery from "./components/Gallery";
import Profile from "./components/Profile";
import Image from "./components/Image";

function App() {
  return (
    <Gallery tittle="HELLO">
      <Profile
        name="Monkey D. Luffy"
        job="Strawhat Pirates Captain"
        bounty="30,000,000 Berries."
        description="Monkey D. Luffy is the captain of the Straw Hat Pirates, and dreamt of being a pirate since childhood from the influence of his idol and mentor Red-Haired Shanks. At the age of 17, Luffy sets sail from the East Blue Sea to the Grand Line in search of the legendary treasure, One Piece, to succeed Gol D. Roger as 'King of the Pirates'."
      >
        <Image
          imageUrl="https://img.assinaja.com/upl/lojas/mundosinfinitos/imagens/foto-one-piece.png"
          alt="Monkey D. Luffy Smiling"
        />
      </Profile>
      <Profile
        name="Sanji"
        job="Strawhat Pirates Cook"
        bounty="1,032,000,000 Berries."
        description="A native to the North Blue, Sanji grew up as part of the Vinsmoke family under his father Vinsmoke Judge, king of the Germa Kingdom, and mother Vinsmoke Sora. Living under a grueling father who only saw Sanji as a soldier, he escapes to Baratie where he learns to cook under “Red Leg” Zeff and learns his fighting style, which is characterized by the use of legs in combat. Sanji is the fifth member and the fourth to join Monkey D. Luffy’s pirate crew as cook after the battle against Don Krieg."
      >
        <Image
          imageUrl="https://revolucaonerd.com/wordpress/wp-content/files/revolucaonerd.com/2023/02/sanji-one-piece-1024x683.webp"
          alt="Sanji Smiling"
        />
      </Profile>
    </Gallery>
  );
}

export default App;
