// Wait till the browser is ready to render the game (avoids glitches)
window.requestAnimationFrame(function () {
  //setTimeout(new GameManager(4, KeyboardInputManager, HTMLActuator, LocalStorageManager), 30000);
  new GameManager(4, KeyboardInputManager, HTMLActuator, LocalStorageManager);
  //console.log("test");
});
