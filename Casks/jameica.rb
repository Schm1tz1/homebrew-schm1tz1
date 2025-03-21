cask "jameica" do
  arch arm: "-aarch64", intel: "64"

  version "2.10.4"
  sha256 arm:   "fde3f0c079d8fa6f35418efe040e03415c1194c10e67fcb941ac19b12a578ff4",
         intel: "3507e02b003228dc392fed671c530846887a43433c1b29136f2cf60a20d1c66a"

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos#{arch}-#{version}.zip"
  name "Jameica"
  desc "Application-platform written in Java containing a SWT-UI"
  homepage "https://www.willuhn.de/products/jameica/"

  livecheck do
    url "https://www.willuhn.de/products/jameica/download.php"
    regex(%r{href=.*?/jameica[._-]macos64[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  # `audit_rosetta` assumes that an app contains at least one binary in the
  #  Contents/MacOS directory, so mitigate it by use of `artifact`.
  artifact "jameica.app", target: "#{appdir}/jameica.app"

  zap trash: "~/.jameica.properties"
end
