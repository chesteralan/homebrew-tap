class ReactAuditor < Formula
  desc "Fast Rust-based linter for React, TypeScript, and web security"
  homepage "https://github.com/chesteralan/react-auditor"
  license "MIT"
  version "react-auditor-v0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chesteralan/react-auditor/releases/download/vreact-auditor-v0.5.2/react-auditor-aarch64-apple-darwin-vreact-auditor-v0.5.2.tar.gz"
      sha256 "421e298e70f5f2c0d9a5e901b23771ac661fe808d9aa1e8f8523698c35092fda"
    else
      url "https://github.com/chesteralan/react-auditor/releases/download/vreact-auditor-v0.5.2/react-auditor-x86_64-apple-darwin-vreact-auditor-v0.5.2.tar.gz"
      sha256 "278112b1f309c5fc265949b498ab329948ee84eddd9847ac57f5d123575f05ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chesteralan/react-auditor/releases/download/vreact-auditor-v0.5.2/react-auditor-aarch64-unknown-linux-gnu-vreact-auditor-v0.5.2.tar.gz"
      sha256 "e61cf95f792bf2504982e6d53a9455222badb507f7c8dfac318c3b147c62a5dc"
    else
      url "https://github.com/chesteralan/react-auditor/releases/download/vreact-auditor-v0.5.2/react-auditor-x86_64-unknown-linux-gnu-vreact-auditor-v0.5.2.tar.gz"
      sha256 "712b43b23db7d474c2051da8241ec57846708e71c35e99ad8cd85eecdcd4f4cd"
    end
  end

  def install
    bin.install "react-auditor"
  end

  test do
    system "#{bin}/react-auditor", "--version"
  end
end
