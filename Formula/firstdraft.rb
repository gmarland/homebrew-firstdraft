class Firstdraft < Formula
  desc "FirstDraft worker CLI"
  homepage "https://github.com/gmarland/FirstDraft"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gmarland/FirstDraft/releases/download/v0.4.0/firstdraft-0.4.0-osx-arm64.tar.gz"
      sha256 "9a0c530cd74b27dc70e03227f4c30645fe909d80a1c2fb51a1d295e226ea456f"
    end

    on_intel do
      url "https://github.com/gmarland/FirstDraft/releases/download/v0.4.0/firstdraft-0.4.0-osx-x64.tar.gz"
      sha256 "3cf389abccf40d3fe5c1c1c4172bf70e04104bc0c42caae5707264b470195cf6"
    end
  end

  def install
    bin.install "firstdraft"
  end

  test do
    assert_match "firstdraft", shell_output("#{bin}/firstdraft --help")
  end
end
