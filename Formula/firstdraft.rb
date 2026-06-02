class Firstdraft < Formula
  desc "FirstDraft worker CLI"
  homepage "https://github.com/gmarland/FirstDraft"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gmarland/FirstDraft/releases/download/v0.1.0/firstdraft-0.1.0-osx-arm64.tar.gz"
      sha256 "3919327cc73d3ffc554ec5905d7f44a0720d28c6218e9cf50463732796b58873"
    end

    on_intel do
      url "https://github.com/gmarland/FirstDraft/releases/download/v0.1.0/firstdraft-0.1.0-osx-x64.tar.gz"
      sha256 "f6e7f2ebb619b58375959841f68bdc29c45bf3c10cfdcb799e271807a5bc7fa1"
    end
  end

  def install
    bin.install "firstdraft"
  end

  test do
    assert_match "firstdraft", shell_output("#{bin}/firstdraft --help")
  end
end
