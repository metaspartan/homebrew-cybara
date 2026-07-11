class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1279"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1279/cybara-v1.0.1279-darwin-arm64-cli"; sha256 "8bf6fffddfeefef05563b94410334568721e364d7155340d9008633ce4ec1bee" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1279/cybara-v1.0.1279-darwin-x64-cli"; sha256 "a66338c428cc4b43e3dd445160051f6102ab7c6e8ffa3cf1a3a47f781d16e0b3" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1279/cybara-v1.0.1279-linux-arm64-cli"; sha256 "c134a1d1cf0882abdc22ac2d18a093bc21dacef7e1736699a74dd08d66351711" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1279/cybara-v1.0.1279-linux-x64-cli"; sha256 "bb5d05cd8ca8dfec74dc46033c736000559de31528ac1bc0a729a170d0f07b75" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
