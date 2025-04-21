import type { Config } from "@jest/types";

const config: Config.InitialOptions = {
  preset: "ts-jest",
  testEnvironment: "node",
  silent: true,
  verbose: true,
  moduleNameMapper: {
    "@components/(.*)": "<rootDir>/src/components/$1",
    "@utils/(.*)": "<rootDir>/src/utils/$1",
  }
};

export default config;
