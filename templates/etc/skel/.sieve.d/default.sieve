require ["fileinto", "envelope"];
if header :contains "x-spam-flag" ["yes"] {
  setflag "\\seen";
  fileinto "Spam";
  stop;
} else {
  keep;
}
