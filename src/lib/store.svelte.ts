interface Store {
  isHovering: boolean;
  bgColor: string;
}

const store = $state<Store>({
  isHovering: false,
  bgColor: "#00ff00",
});

export { store };
