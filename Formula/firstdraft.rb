class Firstdraft < Formula
  desc "FirstDraft worker CLI"
  homepage "https://github.com/gmarland/FirstDraft"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gmarland/FirstDraft/releases/download/v0.6.0/firstdraft-0.6.0-osx-arm64.tar.gz"
      sha256 "e312712a260f672046bb3cec2165fe08deedc0104b0b1977622fbf2640f5c51c"
    end

    on_intel do
      url "https://github.com/gmarland/FirstDraft/releases/download/v0.6.0/firstdraft-0.6.0-osx-x64.tar.gz"
      sha256 "63f7d6d3924c5d309c25bfca7b4f23cc04eaee11d0d5e22f6d5255ac20a98838"
    end
  end

  def install
    bin.install "firstdraft"
  end

  test do
    assert_match "firstdraft", shell_output("#{bin}/firstdraft --help")
  end
end
