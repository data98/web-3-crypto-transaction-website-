export const shortenAddress = (address) => `${address.slice(0, 2)}${address.slice(2, 5).toUpperCase()}...${address.slice(address.length - 4).toUpperCase()}`
// Writing exactly as it is in Metamask