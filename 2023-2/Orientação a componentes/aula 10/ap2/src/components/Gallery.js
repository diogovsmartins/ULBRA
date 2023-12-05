import '../styles/Gallery.css';
import Form from './Form';
import Card from './Card';
import GalleryGreeting from './GalleryGreeting';

export default function Gallery({ addUserToGalleryFunction, userListToRender }) {
  const children = userListToRender.map((user) => (
    <Card
      user={user}
    />
  ));

  return (
    <div id="gallery-div">
      <GalleryGreeting userListToRender={userListToRender} />

      <div id="gallery-content-wrapper">
        <div id="gallery-attendant-card-div">
          {children}
        </div>
        <div id="outer-form-div">
          <Form id="form-style" userList={addUserToGalleryFunction} />
        </div>
      </div>
    </div>
  );
}
